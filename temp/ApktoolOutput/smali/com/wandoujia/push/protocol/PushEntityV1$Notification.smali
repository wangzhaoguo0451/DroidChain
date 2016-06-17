.class public Lcom/wandoujia/push/protocol/PushEntityV1$Notification;
.super Ljava/lang/Object;
.source "PushEntityV1.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_MSG:Ljava/lang/String; = "msg"

.field public static final TYPE_NOTIFY:Ljava/lang/String; = "notify"

.field public static final TYPE_TIP:Ljava/lang/String; = "tip"


# instance fields
.field private desc:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private notificationModel:Lcom/wandoujia/push/protocol/NotificationModel;

.field private redirect:Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;

.field private srcChannel:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationModel()Lcom/wandoujia/push/protocol/NotificationModel;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->notificationModel:Lcom/wandoujia/push/protocol/NotificationModel;

    return-object v0
.end method

.method public getRedirect()Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->redirect:Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;

    return-object v0
.end method

.method public getSrcChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->srcChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->desc:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->icon:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setRedirect(Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->redirect:Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;

    .line 79
    return-void
.end method

.method public setSrcChannel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->srcChannel:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->title:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->type:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirect is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$Notification;->redirect:Lcom/wandoujia/push/protocol/PushEntityV1$Redirect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
