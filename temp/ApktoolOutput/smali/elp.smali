.class public final Lelp;
.super Ljava/lang/Object;
.source "SuggestionCardView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/wandoujia/image/view/AsyncImageView;

.field public d:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

.field private e:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lelp;->e:Landroid/view/View;

    .line 27
    iput-object p1, p0, Lelp;->e:Landroid/view/View;

    .line 28
    invoke-static {p1}, Lely;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lelp;->a:Landroid/widget/TextView;

    .line 29
    invoke-static {p1}, Lely;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lelp;->b:Landroid/widget/TextView;

    .line 30
    invoke-static {p1}, Lely;->d(Landroid/view/View;)Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    iput-object v0, p0, Lelp;->c:Lcom/wandoujia/image/view/AsyncImageView;

    .line 31
    invoke-static {p1}, Lely;->e(Landroid/view/View;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    iput-object v0, p0, Lelp;->d:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    .line 32
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lelp;
    .locals 2
    .parameter

    .prologue
    .line 60
    new-instance v0, Lelp;

    sget v1, Lcom/wandoujia/launcher_search/R$layout;->suggestion_card_simple:I

    invoke-static {p0, v1}, Lehx;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lelp;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static b(Landroid/view/ViewGroup;)Lelp;
    .locals 2
    .parameter

    .prologue
    .line 65
    new-instance v0, Lelp;

    sget v1, Lcom/wandoujia/launcher_search/R$layout;->suggestion_card_rich:I

    invoke-static {p0, v1}, Lehx;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lelp;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lelp;->e:Landroid/view/View;

    return-object v0
.end method
