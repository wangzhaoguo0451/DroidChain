.class public final Leld;
.super Ljava/lang/Object;
.source "SearchCardView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/wandoujia/image/view/AsyncImageView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

.field private f:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Leld;->f:Landroid/view/View;

    .line 28
    iput-object p1, p0, Leld;->f:Landroid/view/View;

    .line 29
    invoke-static {p1}, Lely;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Leld;->a:Landroid/widget/TextView;

    .line 30
    invoke-static {p1}, Lely;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Leld;->b:Landroid/widget/TextView;

    .line 31
    invoke-static {p1}, Lely;->c(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Leld;->d:Landroid/widget/TextView;

    .line 32
    invoke-static {p1}, Lely;->d(Landroid/view/View;)Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    iput-object v0, p0, Leld;->c:Lcom/wandoujia/image/view/AsyncImageView;

    .line 33
    invoke-static {p1}, Lely;->e(Landroid/view/View;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    iput-object v0, p0, Leld;->e:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    .line 34
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Leld;
    .locals 2
    .parameter

    .prologue
    .line 66
    new-instance v0, Leld;

    sget v1, Lcom/wandoujia/launcher_search/R$layout;->search_card_view:I

    invoke-static {p0, v1}, Lehx;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Leld;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Leld;->f:Landroid/view/View;

    return-object v0
.end method
