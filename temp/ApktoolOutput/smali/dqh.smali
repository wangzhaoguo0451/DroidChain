.class public final Ldqh;
.super Lhic;
.source "SectionContainerPresenter.java"


# instance fields
.field private a:I

.field private b:Lerx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lerx",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lerf;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ldcm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lhic;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldqh;->c:Ljava/util/Set;

    .line 49
    new-instance v0, Ldcm;

    invoke-direct {v0}, Ldcm;-><init>()V

    iput-object v0, p0, Ldqh;->d:Ldcm;

    .line 50
    return-void
.end method

.method private a(Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/ViewGroup;)Lerf;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Ldqh;->d:Ldcm;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Ldcm;->c(Landroid/view/ViewGroup;I)Lerf;

    move-result-object v0

    .line 119
    iget-object v1, v0, Lerf;->b:Landroid/view/View;

    invoke-static {v1, v0}, Lery;->a(Landroid/view/View;Lerf;)V

    .line 120
    iget-object v1, v0, Lerf;->b:Landroid/view/View;

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->getValue()I

    move-result v2

    invoke-static {v1, v2}, Lery;->b(Landroid/view/View;I)V

    .line 121
    iget v1, p0, Ldqh;->a:I

    if-nez v1, :cond_0

    .line 122
    iget-object v1, v0, Lerf;->b:Landroid/view/View;

    invoke-static {v1}, Lery;->c(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Ldqh;->a:I

    .line 124
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-static {p0}, Lery;->e(Landroid/view/View;)I

    move-result v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lhic;->a()V

    .line 148
    iget-object v0, p0, Ldqh;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerf;

    .line 149
    invoke-virtual {v0}, Lerf;->a()V

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 54
    iget-object v0, p0, Ldqh;->d:Ldcm;

    invoke-virtual {p0}, Ldqh;->g()Lhas;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lhaz;->f:Lhas;

    iget-object v1, v1, Lhas;->a:Leqw;

    iput-object v1, v0, Lhas;->a:Leqw;

    .line 56
    :cond_0
    iget-object v0, p0, Ldqh;->b:Lerx;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldqh;->d()Lerf;

    move-result-object v0

    iget-object v0, v0, Lerf;->b:Landroid/view/View;

    invoke-static {v0}, Lery;->d(Landroid/view/View;)Lerx;

    move-result-object v0

    iput-object v0, p0, Ldqh;->b:Lerx;

    .line 58
    :cond_1
    invoke-virtual {p0}, Ldqh;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 111
    :cond_2
    return-void

    .line 65
    :cond_3
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 68
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v5, v6

    .line 71
    :goto_0
    if-ge v5, v7, :cond_9

    .line 72
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/wandoujia/ripple_framework/model/Model;

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_5

    .line 75
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 76
    invoke-static {v1, v2}, Ldqh;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    invoke-static {v1}, Lery;->a(Landroid/view/View;)Lerf;

    move-result-object v1

    .line 98
    :goto_1
    invoke-virtual {v1, v2}, Lerf;->a(Ljava/lang/Object;)V

    .line 99
    iget-object v2, p0, Ldqh;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 80
    invoke-direct {p0, v2, v0}, Ldqh;->a(Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/ViewGroup;)Lerf;

    move-result-object v1

    .line 81
    iget-object v3, v1, Lerf;->b:Landroid/view/View;

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 85
    :cond_5
    iget-object v1, p0, Ldqh;->b:Lerx;

    if-eqz v1, :cond_c

    iget v1, p0, Ldqh;->a:I

    if-eqz v1, :cond_c

    .line 86
    iget-object v8, p0, Ldqh;->b:Lerx;

    iget v9, p0, Ldqh;->a:I

    iget-object v1, v8, Lerx;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v8, Lerx;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->remove(I)V

    :cond_6
    const-string v1, "RecycleHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "[Hit] recycleKey="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    :goto_2
    check-cast v1, Landroid/view/View;

    .line 87
    if-eqz v1, :cond_c

    invoke-static {v1, v2}, Ldqh;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 88
    invoke-static {v1}, Lery;->a(Landroid/view/View;)Lerf;

    move-result-object v1

    .line 91
    :goto_3
    if-nez v1, :cond_7

    .line 92
    invoke-direct {p0, v2, v0}, Ldqh;->a(Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/ViewGroup;)Lerf;

    move-result-object v1

    .line 94
    :cond_7
    iget-object v3, v1, Lerf;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    move-object v1, v4

    .line 86
    goto :goto_2

    .line 102
    :cond_9
    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 105
    iget-object v1, p0, Ldqh;->b:Lerx;

    if-eqz v1, :cond_b

    .line 106
    iget-object v3, p0, Ldqh;->b:Lerx;

    iget v4, p0, Ldqh;->a:I

    iget-object v1, v3, Lerx;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, v3, Lerx;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_b
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_c
    move-object v1, v4

    goto :goto_3
.end method
