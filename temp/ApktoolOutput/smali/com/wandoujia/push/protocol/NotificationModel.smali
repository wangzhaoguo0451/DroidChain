.class public Lcom/wandoujia/push/protocol/NotificationModel;
.super Ljava/lang/Object;
.source "NotificationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private content:Lcom/wandoujia/push/protocol/NotificationModel$Content;

.field private icon:Lcom/wandoujia/push/protocol/NotificationModel$Icon;

.field private id:Ljava/lang/String;

.field private imageView:Lcom/wandoujia/push/protocol/NotificationModel$ImageView;

.field private negativeButton:Lcom/wandoujia/push/protocol/NotificationModel$Button;

.field private positiveButton:Lcom/wandoujia/push/protocol/NotificationModel$Button;

.field private viewType:Lcom/wandoujia/push/protocol/NotificationModel$ViewType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method


# virtual methods
.method public getContent()Lcom/wandoujia/push/protocol/NotificationModel$Content;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel;->content:Lcom/wandoujia/push/protocol/NotificationModel$Content;

    return-object v0
.end method

.method public getIcon()Lcom/wandoujia/push/protocol/NotificationModel$Icon;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel;->icon:Lcom/wandoujia/push/protocol/NotificationModel$Icon;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageView()Lcom/wandoujia/push/protocol/NotificationModel$ImageView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel;->imageView:Lcom/wandoujia/push/protocol/NotificationModel$ImageView;

    return-object v0
.end method

.method public getNegativeButton()Lcom/wandoujia/push/protocol/NotificationModel$Button;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel;->negativeButton:Lcom/wandoujia/push/protocol/NotificationModel$Button;

    return-object v0
.end method

.method public getPositiveButton()Lcom/wandoujia/push/protocol/NotificationModel$Button;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel;->positiveButton:Lcom/wandoujia/push/protocol/NotificationModel$Button;

    return-object v0
.end method

.method public getViewType()Lcom/wandoujia/push/protocol/NotificationModel$ViewType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel;->viewType:Lcom/wandoujia/push/protocol/NotificationModel$ViewType;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 159
    new-instance v1, Lgzn;

    invoke-direct {v1}, Lgzn;-><init>()V

    invoke-virtual {v1}, Lgzn;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
