.class final Leap;
.super Ljava/lang/Object;
.source "CasualItemController.java"

# interfaces
.implements Leix;


# instance fields
.field private synthetic a:Leaz;


# direct methods
.method constructor <init>(Leaz;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Leap;->a:Leaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Leap;->a:Leaz;

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Leap;->a:Leaz;

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    return-object v0
.end method
