<?php

namespace backend\controllers;

use backend\models\Pengguna;
use Yii;
use backend\models\Unit;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * UnitController implements the CRUD actions for Unit model.
 */
class UnitController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        $level_akses = Yii::$app->user->identity->attributes['level_akses'];

        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['index', 'create', 'view', 'update', 'delete', 'find-model'],
                        'allow' => $level_akses == 'admin' ? true : false,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Unit models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Unit::find(),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Unit model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Unit model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Unit();
        $model2 = new Pengguna();

        if ($model->load(Yii::$app->request->post())) {
            $data_pengguna = Yii::$app->request->post('Pengguna');

            $model2->username = $data_pengguna['username'];
            $model2->setPassword($data_pengguna['password']);
            $model2->nama = $data_pengguna['nama'];
            $model2->level_akses = 'unit';
            // print_r($model2);exit();
            $model2->save();

            $data_unit = Yii::$app->request->post('Unit');
            $model->username = $model2->username;
            $model->nama_unit = $data_unit['nama_unit'];
            $model->unit = $data_unit['unit'];
            $model->kabupaten = $data_unit['kabupaten'];
            $model->email = $data_unit['email'];
            $model->alamat = $data_unit['alamat'];
            // print_r();exit();
            $model->save();

            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
            'model2' => $model2
        ]);
    }

    /**
     * Updates an existing Unit model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_unit]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Unit model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Unit model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Unit the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Unit::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
