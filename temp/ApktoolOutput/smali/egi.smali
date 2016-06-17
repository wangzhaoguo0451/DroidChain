.class public final Legi;
.super Ljava/lang/Object;
.source "LauncherHome.java"


# static fields
.field public static final a:I


# instance fields
.field public b:Lgf;

.field public c:Landroid/support/v4/view/ViewPager;

.field public d:Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;

.field public e:Landroid/os/Handler;

.field public f:Lhw;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Legp;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Legb;

.field private j:I

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lego;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/wandoujia/launcher_base/R$id;->card_controller:I

    sput v0, Legi;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Legi;->g:Ljava/util/List;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Legi;->j:I

    .line 279
    new-instance v0, Legn;

    invoke-direct {v0, p0}, Legn;-><init>(Legi;)V

    iput-object v0, p0, Legi;->f:Lhw;

    .line 36
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method static synthetic a(Legi;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Legi;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Legi;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Legi;->e:Landroid/os/Handler;

    new-instance v1, Legm;

    invoke-direct {v1, p0, p1}, Legm;-><init>(Legi;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Legi;I)Legp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    if-ltz p1, :cond_0

    iget-object v0, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legp;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Legi;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Legi;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Legi;->h:Z

    iget-object v0, p0, Legi;->e:Landroid/os/Handler;

    new-instance v1, Legk;

    invoke-direct {v1, p0}, Legk;-><init>(Legi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Legi;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Legi;->h:Z

    return v0
.end method

.method static synthetic c(Legi;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    if-ltz p1, :cond_0

    iget-object v0, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legp;

    iget-object v1, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Legi;->b:Lgf;

    iget-object v0, v0, Lgf;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    iget-object v0, p0, Legi;->d:Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;

    invoke-direct {p0}, Legi;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Legi;)Legb;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Legi;->i:Legb;

    return-object v0
.end method

.method static synthetic d(Legi;I)Legp;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legp;

    iget v2, v0, Legp;->b:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic e(Legi;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Legi;->j:I

    return p1
.end method

.method static synthetic e(Legi;)Legp;
    .locals 3
    .parameter

    .prologue
    .line 22
    new-instance v0, Legp;

    invoke-direct {v0}, Legp;-><init>()V

    iget-object v1, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Legp;->c:I

    iget-object v1, p0, Legi;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Legi;->b:Lgf;

    iget-object v1, v1, Lgf;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    iget-object v1, p0, Legi;->c:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Legi;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Legi;->d:Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;

    invoke-direct {p0}, Legi;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;->a(I)V

    return-object v0
.end method

.method static synthetic f(Legi;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Legi;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Legi;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Legi;->a()I

    move-result v0

    return v0
.end method

.method static synthetic h(Legi;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Legi;->j:I

    return v0
.end method

.method static synthetic i(Legi;)Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Legi;->d:Lcom/wandoujia/launcher_base/launcher/view/SlidingTabDot;

    return-object v0
.end method

.method static synthetic j(Legi;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Legi;->k:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Legi;->e:Landroid/os/Handler;

    new-instance v1, Legj;

    invoke-direct {v1, p0, p1}, Legj;-><init>(Legi;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public final a(Legb;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    new-instance v0, Legc;

    invoke-direct {v0, p0}, Legc;-><init>(Legi;)V

    .line 89
    iput-object v0, p1, Legb;->b:Legc;

    .line 90
    iput-object p1, p0, Legi;->i:Legb;

    .line 91
    return-void
.end method

.method public final a(Lego;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Legi;->k:Ljava/lang/ref/WeakReference;

    .line 104
    return-void
.end method
