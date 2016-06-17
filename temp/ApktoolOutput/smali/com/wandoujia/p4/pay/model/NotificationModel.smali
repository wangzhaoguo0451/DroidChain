.class public Lcom/wandoujia/p4/pay/model/NotificationModel;
.super Ljava/lang/Object;
.source "NotificationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private error:Ljava/lang/Long;

.field private msg:Ljava/lang/String;

.field private notification:Lcom/wandoujia/p4/pay/model/NotificationModel$Notification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/NotificationModel;->error:Ljava/lang/Long;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/NotificationModel;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Lcom/wandoujia/p4/pay/model/NotificationModel$Notification;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/NotificationModel;->notification:Lcom/wandoujia/p4/pay/model/NotificationModel$Notification;

    return-object v0
.end method
