.class public Lcom/wandoujia/p4/app/detail/view/CommentItemView;
.super Landroid/widget/LinearLayout;
.source "CommentItemView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/app/detail/view/CommentItemView;
    .locals 1
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0301c7

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    return-object v0
.end method


# virtual methods
.method public getAuthorIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAuthorNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContentView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHeartView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 71
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0c0316

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->a:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f0c0317

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->b:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c0318

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->c:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c0319

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->d:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->e:Landroid/widget/TextView;

    .line 47
    return-void
.end method
