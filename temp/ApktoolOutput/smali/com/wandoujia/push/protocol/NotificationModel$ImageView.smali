.class public Lcom/wandoujia/push/protocol/NotificationModel$ImageView;
.super Ljava/lang/Object;
.source "NotificationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bigImageIntent:Ljava/lang/String;

.field private bigImagePath:Ljava/lang/String;

.field private smallImageIntent:Ljava/lang/String;

.field private smallImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigImageIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->bigImageIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getBigImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->bigImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImageIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->smallImageIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->smallImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public setBigImageIntent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->bigImageIntent:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSmallImageIntent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->smallImageIntent:Ljava/lang/String;

    .line 106
    return-void
.end method
