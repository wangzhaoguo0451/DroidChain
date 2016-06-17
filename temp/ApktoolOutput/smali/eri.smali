.class public final Leri;
.super Ljava/lang/Object;
.source "AQuery.java"


# instance fields
.field public a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Leri;->c:Landroid/util/SparseArray;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Leri;-><init>()V

    .line 96
    iput-object p1, p0, Leri;->b:Landroid/view/View;

    .line 97
    iput-object p1, p0, Leri;->a:Landroid/view/View;

    .line 98
    return-void
.end method

.method private j(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Leri;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 111
    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v1, p0, Leri;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 115
    iget-object v0, p0, Leri;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    :cond_1
    iget-object v1, p0, Leri;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Leri;
    .locals 2
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Leri;->j(I)Landroid/view/View;

    move-result-object v0

    .line 162
    new-instance v1, Leri;

    invoke-direct {v1, v0}, Leri;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public final a(Landroid/view/View$OnClickListener;)Leri;
    .locals 1
    .parameter

    .prologue
    .line 1090
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Leri;
    .locals 1
    .parameter

    .prologue
    .line 1729
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1732
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Leri;
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 305
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_0
    return-object p0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Leri;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Leri;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1387
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Leri;
    .locals 1
    .parameter

    .prologue
    .line 226
    invoke-direct {p0, p1}, Leri;->j(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leri;->a:Landroid/view/View;

    return-object p0
.end method

.method public final c()Leri;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1721
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1724
    :cond_0
    return-object p0
.end method

.method public final c(I)Leri;
    .locals 1
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 355
    :cond_0
    return-object p0
.end method

.method public final d(I)Leri;
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 368
    :cond_0
    return-object p0
.end method

.method public final e(I)Leri;
    .locals 2
    .parameter

    .prologue
    .line 394
    invoke-virtual {p0}, Leri;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v0, p0, Leri;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p0
.end method

.method public final f(I)Leri;
    .locals 1
    .parameter

    .prologue
    .line 753
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 754
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :cond_0
    return-object p0
.end method

.method public final g(I)Leri;
    .locals 2
    .parameter

    .prologue
    .line 769
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 771
    if-eqz p1, :cond_1

    .line 772
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 779
    :cond_0
    :goto_0
    return-object p0

    .line 774
    :cond_1
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final h(I)Leri;
    .locals 1
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 794
    :cond_0
    return-object p0
.end method

.method public final i(I)Leri;
    .locals 2
    .parameter

    .prologue
    .line 805
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Leri;->a:Landroid/view/View;

    invoke-virtual {p0}, Leri;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 809
    :cond_0
    return-object p0
.end method
