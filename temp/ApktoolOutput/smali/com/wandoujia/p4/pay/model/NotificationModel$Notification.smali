.class public final Lcom/wandoujia/p4/pay/model/NotificationModel$Notification;
.super Ljava/lang/Object;
.source "NotificationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private body:Ljava/lang/String;

.field private detailsUrl:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/NotificationModel$Notification;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/NotificationModel$Notification;->detailsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/NotificationModel$Notification;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/NotificationModel$Notification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/NotificationModel$Notification;->type:Ljava/lang/String;

    return-object v0
.end method
