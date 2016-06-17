.class public final Leat;
.super Lear;
.source "GameLocalItemController.java"


# instance fields
.field a:Leax;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lear;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;Leax;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lear;->a(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;Leax;)V

    .line 27
    iget-object v0, p0, Leat;->a:Leax;

    if-ne v0, p2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iput-object p2, p0, Leat;->a:Leax;

    .line 33
    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getGameIconView$1e9788cf()Leay;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    iget-object v1, p0, Leat;->a:Leax;

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v0}, Leay;->b()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Leat;->a:Leax;

    invoke-interface {v2}, Leax;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v1, Leau;

    invoke-direct {v1, p0, v0}, Leau;-><init>(Leat;Leay;)V

    invoke-static {v1}, Ledy;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
