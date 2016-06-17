.class public final Leoq;
.super Ljava/lang/Object;
.source "CardShowLogHelper.java"


# static fields
.field private static final a:I


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/widget/AbsListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_card_show_action:I

    sput v0, Leoq;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leoq;->b:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Leoq;->c:Z

    .line 110
    return-void
.end method

.method static synthetic a(Leoq;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Leoq;->c:Z

    return v0
.end method

.method private b(Landroid/view/View;)Leor;
    .locals 2
    .parameter

    .prologue
    .line 102
    sget v0, Leoq;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leor;

    .line 103
    if-nez v0, :cond_0

    .line 104
    new-instance v0, Leor;

    invoke-direct {v0, p0}, Leor;-><init>(Leoq;)V

    iput-object p1, v0, Leor;->a:Landroid/view/View;

    .line 105
    sget v1, Leoq;->a:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 107
    :cond_0
    return-object v0
.end method

.method static synthetic b(Leoq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Leoq;->b:Ljava/util/List;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Leoq;->d:Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leoq;->d:Landroid/widget/AbsListView;

    invoke-static {v1}, Ld;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leoq;->d:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    iget-object v1, p0, Leoq;->d:Landroid/widget/AbsListView;

    invoke-static {v1}, Ld;->f(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Leoq;->d:Landroid/widget/AbsListView;

    .line 83
    iget-object v0, p0, Leoq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Leoq;->c:Z

    .line 85
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Leoq;->b(Landroid/view/View;)Leor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public final a(Landroid/view/View;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 46
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {p1}, Leny;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p1}, Leoq;->b(Landroid/view/View;)Leor;

    move-result-object v0

    iput-wide p2, v0, Leor;->b:J

    .line 54
    iget-boolean v1, p0, Leoq;->c:Z

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0}, Leoq;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Landroid/widget/AbsListView;)V
    .locals 6
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Leoq;->d:Landroid/widget/AbsListView;

    .line 69
    invoke-direct {p0}, Leoq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Leoq;->c:Z

    .line 73
    iget-object v0, p0, Leoq;->d:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 74
    iget-object v1, p0, Leoq;->d:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    move v1, v0

    .line 75
    :goto_0
    if-gt v1, v2, :cond_0

    .line 76
    iget-object v0, p0, Leoq;->d:Landroid/widget/AbsListView;

    iget-object v3, p0, Leoq;->d:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 77
    iget-object v0, p0, Leoq;->d:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Leoq;->a(Landroid/view/View;J)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Leoq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    return-void
.end method
