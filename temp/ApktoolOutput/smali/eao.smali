.class final Leao;
.super Ljava/lang/Object;
.source "CasualItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Leaz;

.field private synthetic b:Leax;


# direct methods
.method constructor <init>(Leaz;Leax;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Leao;->a:Leaz;

    iput-object p2, p0, Leao;->b:Leax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 182
    iget-object v0, p0, Leao;->a:Leaz;

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->c(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Leao;->b:Leax;

    invoke-interface {v0, p1}, Leax;->a(Landroid/view/View;)Leaf;

    move-result-object v0

    invoke-interface {v0}, Leaf;->a()V

    .line 184
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Leao;->b:Leax;

    invoke-interface {v1}, Leax;->j_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Leao;->a:Leaz;

    invoke-virtual {v0}, Leaz;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Leao;->a:Leaz;

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Leao;->a:Leaz;

    iget-object v0, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setVisibility(I)V

    .line 190
    :cond_0
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    iget-object v1, p0, Leao;->b:Leax;

    invoke-interface {v1}, Leax;->j_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lebl;->a(Ljava/lang/String;)V

    .line 191
    return-void
.end method
