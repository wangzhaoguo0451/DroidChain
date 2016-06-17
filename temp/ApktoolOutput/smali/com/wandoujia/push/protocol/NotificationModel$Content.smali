.class public Lcom/wandoujia/push/protocol/NotificationModel$Content;
.super Ljava/lang/Object;
.source "NotificationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private contentIntent:Ljava/lang/String;

.field private detail:Ljava/lang/String;

.field private summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$Content;->contentIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$Content;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$Content;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public setContentIntent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/wandoujia/push/protocol/NotificationModel$Content;->contentIntent:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wandoujia/push/protocol/NotificationModel$Content;->detail:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wandoujia/push/protocol/NotificationModel$Content;->summary:Ljava/lang/String;

    .line 59
    return-void
.end method
