.class public final Leaz;
.super Ljava/lang/Object;
.source "CasualItemView.java"

# interfaces
.implements Leay;


# instance fields
.field public synthetic a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->a(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->b(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    return-object v0
.end method
