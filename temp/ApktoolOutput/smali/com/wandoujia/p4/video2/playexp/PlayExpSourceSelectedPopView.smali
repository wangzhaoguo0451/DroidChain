.class public Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;
.super Landroid/widget/RelativeLayout;
.source "PlayExpSourceSelectedPopView.java"


# instance fields
.field public a:Landroid/widget/ListView;

.field public b:Lgon;

.field public c:Z

.field public d:Landroid/view/animation/Animation;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lgov;

.field private i:Landroid/view/animation/Animation;

.field private final j:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Lgop;

    invoke-direct {v0, p0}, Lgop;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->j:Landroid/view/animation/Animation$AnimationListener;

    .line 68
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->b()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Lgop;

    invoke-direct {v0, p0}, Lgop;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->j:Landroid/view/animation/Animation$AnimationListener;

    .line 73
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->b()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Lgop;

    invoke-direct {v0, p0}, Lgop;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->j:Landroid/view/animation/Animation$AnimationListener;

    .line 78
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->b()V

    .line 79
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030230

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    const v0, 0x7f0c048f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->f:Landroid/view/View;

    .line 84
    const v0, 0x7f0c0490

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->g:Landroid/view/View;

    .line 85
    const v0, 0x7f0c02a9

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->a:Landroid/widget/ListView;

    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040023

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->d:Landroid/view/animation/Animation;

    .line 87
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040024

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->i:Landroid/view/animation/Animation;

    .line 88
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->i:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->j:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 89
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->i:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 90
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->g:Landroid/view/View;

    new-instance v1, Lgos;

    invoke-direct {v1}, Lgos;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->f:Landroid/view/View;

    new-instance v1, Lgot;

    invoke-direct {v1, p0}, Lgot;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->c:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;)Lgov;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->h:Lgov;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->c:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->i:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setOnTouchOutsideListener(Lgov;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceSelectedPopView;->h:Lgov;

    .line 123
    return-void
.end method
