.class public Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;
.super Landroid/widget/LinearLayout;
.source "VideoSourceSelectedView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/wandoujia/p4/video2/view/NoScrollGridView;

.field public c:Lcom/wandoujia/p4/video2/view/NoScrollGridView;

.field public d:Lcom/wandoujia/p4/video/model/VideoSharpness;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lgpq;

.field public h:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

.field public i:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;

.field public j:Lgpp;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;Lcom/wandoujia/p4/video/model/VideoSharpness;)Lcom/wandoujia/p4/video/model/VideoSharpness;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->d:Lcom/wandoujia/p4/video/model/VideoSharpness;

    return-object p1
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;
    .locals 1
    .parameter

    .prologue
    .line 56
    const v0, 0x7f03023a

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;)Lgpq;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->g:Lgpq;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;)Lcom/wandoujia/p4/video/model/VideoSharpness;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->d:Lcom/wandoujia/p4/video/model/VideoSharpness;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->f:Z

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;)Lgpp;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->j:Lgpp;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 63
    const v0, 0x7f0c0497

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->findViewById(I)Landroid/view/View;

    .line 64
    const v0, 0x7f0c0498

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/view/NoScrollGridView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->b:Lcom/wandoujia/p4/video2/view/NoScrollGridView;

    .line 65
    const v0, 0x7f0c0499

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->a:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0c049a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/view/NoScrollGridView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->c:Lcom/wandoujia/p4/video2/view/NoScrollGridView;

    .line 67
    const v0, 0x7f0c049b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->l:Landroid/widget/Button;

    .line 68
    const v0, 0x7f0c049c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->k:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->b:Lcom/wandoujia/p4/video2/view/NoScrollGridView;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/view/NoScrollGridView;->setNumColumns(I)V

    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->c:Lcom/wandoujia/p4/video2/view/NoScrollGridView;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/view/NoScrollGridView;->setNumColumns(I)V

    .line 71
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->k:Landroid/widget/Button;

    new-instance v1, Lgpl;

    invoke-direct {v1, p0}, Lgpl;-><init>(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;->l:Landroid/widget/Button;

    new-instance v1, Lgpm;

    invoke-direct {v1, p0}, Lgpm;-><init>(Lcom/wandoujia/p4/video2/view/VideoSourceSelectedView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method
