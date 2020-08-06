<?php

namespace backend\controllers;

use Yii;
use backend\models\TermDetailReport;
use backend\models\TermKendaraan;
use backend\models\TermPenumpang;
use backend\models\Unit;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;

/**
 * TermDetailReportController implements the CRUD actions for TermDetailReport model.
 */
class TermDetailReportController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all TermDetailReport models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => TermDetailReport::find(),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single TermDetailReport model.
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
     * Creates a new TermDetailReport model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new TermDetailReport();
        $model2 = new TermKendaraan();
        $model3 = new TermPenumpang();

        if ($model->load(Yii::$app->request->post()) ) {
            $data = Yii::$app->request->post();

            $model->id_unit = $data['TermDetailReport']['id_unit'];
            $model->jenis_tujuan = $data['TermDetailReport']['jenis_tujuan'];
            $model->tipe_perjalanan = $data['TermDetailReport']['tipe_perjalanan'];
            $model->tanggal = $data['TermDetailReport']['tanggal'];

            $model2->kendaraan_masuk = $data['TermKendaraan']['kendaraan_masuk'];
            $model2->kendaraan_keluar = $data['TermKendaraan']['kendaraan_keluar'];
            $model2->save();

            // Get last id term_kendaraan
            $model->id_kendaraan = \Yii::$app->db->getLastInsertId();

            $model3->penumpang_datang = $data['TermPenumpang']['penumpang_datang'];
            $model3->penumpang_turun = $data['TermPenumpang']['penumpang_turun'];
            $model3->penumpang_naik = $data['TermPenumpang']['penumpang_naik'];
            $model3->penumpang_berangkat = $data['TermPenumpang']['penumpang_berangkat'];
            $model3->save();

            // Get last id term_kendaraan
            $model->id_penumpang = \Yii::$app->db->getLastInsertId();

            //Save data termdetailreport
            $model->save();
            
            return $this->redirect(['index']);
        }

        $data_unit = Unit::find()->where(['unit' => 'Terminal'])->all();
        $data_unit = ArrayHelper::map($data_unit, 'id_unit', 'nama_unit');

        return $this->render('create', [
            'model' => $model,
            'model2' => $model2,
            'model3' => $model3,
            'data' => [
                'data_unit' => $data_unit
            ]
        ]);
    }

    /**
     * Updates an existing TermDetailReport model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_detail_report]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing TermDetailReport model.
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
     * Finds the TermDetailReport model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return TermDetailReport the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = TermDetailReport::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
