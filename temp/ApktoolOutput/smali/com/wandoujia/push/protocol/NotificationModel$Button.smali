.class public Lcom/wandoujia/push/protocol/NotificationModel$Button;
.super Ljava/lang/Object;
.source "NotificationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private iconPath:Ljava/lang/String;

.field private intent:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$Button;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$Button;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/wandoujia/push/protocol/NotificationModel$Button;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wandoujia/push/protocol/NotificationModel$Button;->intent:Ljava/lang/String;

    .line 141
    return-void
.end method
