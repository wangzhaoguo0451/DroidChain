.class public Lcom/tencent/mm/sdk/platformtools/LBSManager;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcbx;


# instance fields
.field private b:I


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->b:I

    if-eqz v0, :cond_3

    const-string v1, "gps"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x4348

    cmpg-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x447a

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    if-eqz v0, :cond_3

    const-string v4, "MicroMsg.LBSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setLocationCache ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] acc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcby;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->a:Lcbx;

    if-nez v0, :cond_2

    new-instance v0, Lcbx;

    invoke-direct {v0}, Lcbx;-><init>()V

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->a:Lcbx;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method
