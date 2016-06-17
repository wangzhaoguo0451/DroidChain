.class public final Leow;
.super Ljava/lang/Object;
.source "RecyclerViewLogHelper.java"


# static fields
.field private static final d:I


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_card_show_action:I

    sput v0, Leow;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leow;->a:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Leow;->b:Z

    .line 106
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p1}, Leny;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Leny;->b()Leny;

    invoke-static {p1}, Leny;->m(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    return-void

    .line 144
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Landroid/view/ViewGroup;

    .line 148
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Leow;->a(Landroid/view/View;Ljava/util/List;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Leow;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Leow;->a(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Leow;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Leow;->b:Z

    return v0
.end method

.method static synthetic b(Leow;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Leow;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/view/View;)Leox;
    .locals 2
    .parameter

    .prologue
    .line 98
    sget v0, Leow;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leox;

    .line 99
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Leox;

    invoke-direct {v0, p0}, Leox;-><init>(Leow;)V

    iput-object p1, v0, Leox;->a:Landroid/view/View;

    .line 101
    sget v1, Leow;->d:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/view/View;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {p1}, Leny;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-boolean v0, p0, Leow;->b:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Leow;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Leow;->a(Landroid/view/View;)Leox;

    move-result-object v0

    iput-wide p2, v0, Leox;->b:J

    .line 58
    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Leow;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leow;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Ld;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leow;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    iget-object v1, p0, Leow;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Ld;->f(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
