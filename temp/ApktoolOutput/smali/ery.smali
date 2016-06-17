.class public final Lery;
.super Ljava/lang/Object;
.source "ViewTagUtils.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget v0, Lcom/wandoujia/nirvana/framework/ui/R$id;->tag_view_holder:I

    sput v0, Lery;->a:I

    .line 12
    sget v0, Lcom/wandoujia/nirvana/framework/ui/R$id;->tag_view_presenter:I

    sput v0, Lery;->b:I

    .line 13
    sget v0, Lcom/wandoujia/nirvana/framework/ui/R$id;->tag_layout_id:I

    sput v0, Lery;->c:I

    .line 14
    sget v0, Lcom/wandoujia/nirvana/framework/ui/R$id;->tag_recycle_helper:I

    sput v0, Lery;->d:I

    .line 15
    sget v0, Lcom/wandoujia/nirvana/framework/ui/R$id;->tag_template:I

    sput v0, Lery;->e:I

    return-void
.end method

.method public static a(Landroid/view/View;)Lerf;
    .locals 1
    .parameter

    .prologue
    .line 26
    sget v0, Lery;->b:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerf;

    return-object v0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    sget v0, Lery;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static a(Landroid/view/View;Lerf;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    sget v0, Lery;->b:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static a(Landroid/view/View;Lerk;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    sget v0, Lery;->a:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static a(Landroid/view/View;Lerx;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Lerx",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    sget v0, Lery;->d:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public static b(Landroid/view/View;)Lerk;
    .locals 1
    .parameter

    .prologue
    .line 34
    sget v0, Lery;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerk;

    return-object v0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    sget v0, Lery;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    sget v0, Lery;->c:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 43
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static d(Landroid/view/View;)Lerx;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            ")",
            "Lerx",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget v0, Lery;->d:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerx;

    return-object v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    sget v0, Lery;->e:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
