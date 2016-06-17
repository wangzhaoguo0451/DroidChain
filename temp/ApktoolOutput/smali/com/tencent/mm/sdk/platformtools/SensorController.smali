.class public Lcom/tencent/mm/sdk/platformtools/SensorController;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static a:F


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x4f80

    sput v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->a:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->b:Z

    :cond_0
    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->b:Z

    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    sput v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->a:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
