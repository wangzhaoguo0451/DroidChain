.class public Lcom/wandoujia/launcher/launcher/models/RecallModel;
.super Ljava/lang/Object;
.source "RecallModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private button:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private showBadge:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecallModel;->button:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecallModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecallModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isShowBadge()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/wandoujia/launcher/launcher/models/RecallModel;->showBadge:Z

    return v0
.end method

.method public setButton(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/RecallModel;->button:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/RecallModel;->description:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setShowBadge(Z)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/wandoujia/launcher/launcher/models/RecallModel;->showBadge:Z

    .line 21
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/RecallModel;->title:Ljava/lang/String;

    .line 29
    return-void
.end method
