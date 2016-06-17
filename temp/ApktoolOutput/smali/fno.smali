.class public final Lfno;
.super Ljava/lang/Object;
.source "SubCategoriesGenerator.java"


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Leus;

.field public c:[Ljava/lang/String;

.field public d:Lfnq;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lfno;->e:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfno;->a:Ljava/util/Set;

    .line 37
    return-void
.end method


# virtual methods
.method final a(Landroid/widget/TextView;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lfno;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 86
    return-void
.end method

.method public final a(Leus;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 40
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iput-object p1, p0, Lfno;->b:Leus;

    .line 45
    iput-object p2, p0, Lfno;->c:[Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lfno;->g:Landroid/view/View;

    if-nez v0, :cond_2

    .line 47
    iget-object v0, p0, Lfno;->e:Landroid/content/Context;

    const v1, 0x7f0301c9

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfno;->g:Landroid/view/View;

    .line 50
    :cond_2
    iget-object v0, p0, Lfno;->g:Landroid/view/View;

    const v1, 0x7f0c0417

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/FlowLayout;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfno;->f:Ljava/util/List;

    .line 53
    invoke-virtual {v0}, Lcom/wandoujia/p4/views/FlowLayout;->removeAllViews()V

    move v2, v3

    .line 54
    :goto_1
    array-length v1, p2

    if-ge v2, v1, :cond_4

    .line 56
    aget-object v4, p2, v2

    .line 57
    const v1, 0x7f0300b1

    invoke-static {v0, v1}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v5, Lfnp;

    invoke-direct {v5, p0, v2, v1}, Lfnp;-><init>(Lfno;ILandroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v5, p0, Lfno;->a:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 71
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/FlowLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v4, p0, Lfno;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 77
    :cond_4
    iget-object v0, p0, Lfno;->g:Landroid/view/View;

    invoke-virtual {p1, v3, v0}, Leus;->a(ILandroid/view/View;)V

    .line 78
    iget-object v0, p0, Lfno;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lfno;->a(Landroid/widget/TextView;)V

    goto :goto_0
.end method
