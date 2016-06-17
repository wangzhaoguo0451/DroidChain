.class public Lcom/wandoujia/p4/button/views/SubActionButton;
.super Landroid/widget/ImageButton;
.source "SubActionButton.java"


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfaz;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lfay;

.field private e:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lfav;

    invoke-direct {v0, p0}, Lfav;-><init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->a:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lfaw;

    invoke-direct {v0, p0}, Lfaw;-><init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lfav;

    invoke-direct {v0, p0}, Lfav;-><init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->a:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lfaw;

    invoke-direct {v0, p0}, Lfaw;-><init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/button/views/SubActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Lfav;

    invoke-direct {v0, p0}, Lfav;-><init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->a:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lfaw;

    invoke-direct {v0, p0}, Lfaw;-><init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/button/views/SubActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/button/views/SubActionButton;)Lcom/wandoujia/p4/views/NirvanaListPopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->e:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    invoke-virtual {p0}, Lcom/wandoujia/p4/button/views/SubActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->e:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    .line 89
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->e:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a(Landroid/view/View;)V

    .line 90
    new-instance v0, Lfay;

    invoke-direct {v0, p0}, Lfay;-><init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->d:Lfay;

    .line 91
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->e:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    iget-object v1, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->d:Lfay;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->e:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a(I)V

    .line 93
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->e:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    iget-object v1, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->b:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, v0, Landroid/support/v7/widget/ListPopupWindow;->i:Landroid/widget/AdapterView$OnItemClickListener;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->SubActionButton:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->f:Z

    .line 98
    const/4 v1, 0x1

    const v2, 0x7f0202ec

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->g:I

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/button/views/SubActionButton;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public setAlwaysShowAsAction(Z)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->f:Z

    .line 151
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfaz;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    iput-object p1, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->c:Ljava/util/List;

    .line 112
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->d:Lfay;

    invoke-virtual {v0}, Lfay;->notifyDataSetChanged()V

    .line 113
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-boolean v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->f:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 115
    :cond_0
    iget v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->g:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/SubActionButton;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/button/views/SubActionButton;->setImageResource(I)V

    .line 119
    new-instance v0, Lfax;

    invoke-direct {v0, p1}, Lfax;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
