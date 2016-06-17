.class public Lcom/wandoujia/jupiter/category/view/CategoryScrollView;
.super Landroid/widget/ScrollView;
.source "CategoryScrollView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ldfm;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->a()V

    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->c:I

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->a:I

    return p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lddp;

    invoke-direct {v0, p0}, Lddp;-><init>(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->e:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lddq;

    invoke-direct {v0, p0}, Lddq;-><init>(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 79
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->c:I

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)Ldfm;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->d:Ldfm;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)V
    .locals 4
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->c:I

    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/category/view/CategoryScrollView;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->a:I

    return v0
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->d:Ldfm;

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->b:I

    if-ne p2, v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput p2, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->b:I

    .line 95
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->d:Ldfm;

    sub-int v1, p1, p3

    sub-int v2, p2, p4

    invoke-interface {v0, v1, v2}, Ldfm;->a(II)V

    goto :goto_0
.end method

.method public setHomeOnScrollChangeListener(Ldfm;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wandoujia/jupiter/category/view/CategoryScrollView;->d:Ldfm;

    .line 84
    return-void
.end method
