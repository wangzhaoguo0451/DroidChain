.class public final Ldkd;
.super Ljava/lang/Object;
.source "NotifyCardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldka;


# direct methods
.method public constructor <init>(Ldka;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Ldkd;->a:Ldka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v0, p0, Ldkd;->a:Ldka;

    iget-object v0, v0, Ldka;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;

    .line 108
    invoke-interface {v0}, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;->b()Ldjz;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjz;

    .line 114
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v2

    iget v3, v0, Ldjz;->a:I

    iget-object v4, v0, Ldjz;->b:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Ldjv;->a(ILandroid/app/Notification;)V

    .line 116
    iget-object v2, v0, Ldjz;->c:Ldjy;

    if-eqz v2, :cond_2

    .line 117
    iget-object v0, v0, Ldjz;->c:Ldjy;

    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v2

    const/16 v3, 0x27e3

    invoke-virtual {v2, v3}, Ldjv;->a(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(J)V

    iget-object v2, v0, Ldjy;->a:Ljava/util/HashMap;

    const-string v3, "event_time"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-string v5, "yyyyMMddHHmm"

    invoke-static {v4, v5}, Lgcy;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Ldjy;->a:Ljava/util/HashMap;

    const-string v2, "frequency"

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->l()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 120
    :cond_3
    return-void
.end method
