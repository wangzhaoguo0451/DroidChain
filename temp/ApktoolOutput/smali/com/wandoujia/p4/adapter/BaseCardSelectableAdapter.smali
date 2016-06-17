.class public abstract Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseCardSelectableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wandoujia/mvc/BaseModel;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    .line 48
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Landroid/app/Activity;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->e:Landroid/view/ViewGroup;

    .line 51
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)V
    .locals 4
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a:Landroid/content/Context;

    const v1, 0x7f030132

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    const v1, 0x7f0c035d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    const v1, 0x7f0c035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leuj;

    invoke-direct {v1, p0}, Leuj;-><init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    const v1, 0x7f0c035c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    const v1, 0x7f0c0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leuk;

    invoke-direct {v1, p0}, Leuk;-><init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    const v1, 0x7f0c035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leul;

    invoke-direct {v1, p0}, Leul;-><init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a()V

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    return-object v0
.end method

.method private d(J)V
    .locals 3
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b()V

    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->notifyDataSetChanged()V

    .line 255
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->notifyDataSetChanged()V

    .line 256
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/wandoujia/mvc/BaseModel;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TM;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/BaseModel;

    return-object v0
.end method

.method public abstract a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/wandoujia/mvc/BaseView;"
        }
    .end annotation
.end method

.method public final a()V
    .locals 5

    .prologue
    const v2, 0x7f0c035a

    .line 188
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e03b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    const v1, 0x7f0c0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a:Landroid/content/Context;

    const v2, 0x7f0e03b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e03b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d(J)V

    .line 134
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 54
    iput-object p1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->notifyDataSetChanged()V

    .line 56
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    const-string v0, "BaseCardAdapter"

    const-string v1, "set data : list is null or empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v1, "BaseCardAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "set data : model class is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/BaseModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d:Landroid/view/View;

    .line 208
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->d(J)V

    .line 140
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final c(J)Z
    .locals 3
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 268
    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a()V

    .line 269
    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 273
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 274
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v1, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :goto_0
    return-object v0

    .line 277
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public abstract f()Lcom/wandoujia/mvc/BaseController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wandoujia/mvc/BaseController;"
        }
    .end annotation
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a(I)Lcom/wandoujia/mvc/BaseModel;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const v5, 0x7f0c000c

    .line 75
    .line 78
    instance-of v0, p2, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 79
    check-cast v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->getOriginView()Landroid/view/View;

    move-result-object v1

    .line 80
    instance-of v0, v1, Lcom/wandoujia/mvc/BaseView;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 81
    check-cast v0, Lcom/wandoujia/mvc/BaseView;

    .line 82
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/mvc/BaseController;

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, p2

    .line 96
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a(I)Lcom/wandoujia/mvc/BaseModel;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/wandoujia/mvc/BaseController;->bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V

    :cond_0
    move-object v0, v1

    .line 99
    check-cast v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;

    invoke-direct {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->l()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->a(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;Z)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c(J)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 101
    check-cast v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;

    invoke-static {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->a(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;)V

    .line 106
    :goto_1
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->getItemId(I)J

    move-result-wide v4

    .line 107
    new-instance v0, Leug;

    invoke-direct {v0, p0, v4, v5}, Leug;-><init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;J)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    new-instance v0, Leuh;

    invoke-direct {v0, p0, v4, v5}, Leuh;-><init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;J)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    new-instance v0, Leui;

    invoke-direct {v0, p0, v4, v5}, Leui;-><init>(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;J)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-object v1

    .line 85
    :cond_1
    new-instance v1, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;-><init>(Landroid/content/Context;B)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a(I)Lcom/wandoujia/mvc/BaseModel;

    move-object v0, v1

    check-cast v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;

    move-result-object v4

    .line 87
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a(I)Lcom/wandoujia/mvc/BaseModel;

    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->f()Lcom/wandoujia/mvc/BaseController;

    move-result-object v3

    .line 88
    invoke-interface {v4}, Lcom/wandoujia/mvc/BaseView;->getView()Landroid/view/View;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The origin view in SelectableAdapter can\'t be longClickable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    invoke-virtual {v2, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    .line 94
    check-cast v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->e()Landroid/view/View;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->a(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;Landroid/view/View;Landroid/view/View;)V

    move-object v0, v3

    move-object v3, v4

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 103
    check-cast v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;

    invoke-static {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->b(Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;)V

    goto :goto_1

    :cond_4
    move-object v0, v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, p2

    goto/16 :goto_0
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()V
.end method

.method public final k()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 306
    :goto_0
    return-object v0

    .line 300
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 302
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->c(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->a(I)Lcom/wandoujia/mvc/BaseModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 306
    goto :goto_0
.end method
