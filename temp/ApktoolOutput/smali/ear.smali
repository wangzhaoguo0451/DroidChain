.class public Lear;
.super Leaw;
.source "FolderIconController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leaw",
        "<",
        "Lcom/wandoujia/launcher/launcher/icon/FolderItemView;",
        "Leax;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Leaw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;Leax;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getIconView()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Leas;

    invoke-direct {v0, p2, p1}, Leas;-><init>(Leax;Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)V

    invoke-virtual {p1, v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_0
    return-void
.end method
