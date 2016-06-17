.class public final Lfaq;
.super Ljava/lang/Object;
.source "ButtonState.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Lcom/wandoujia/mvc/Action;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/mvc/Action;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 83
    const v1, 0x7f010042

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e04d2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfaq;-><init>(ILjava/lang/CharSequence;Lcom/wandoujia/mvc/Action;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(IILcom/wandoujia/mvc/Action;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lfaq;-><init>(ILjava/lang/CharSequence;Lcom/wandoujia/mvc/Action;ZI)V

    .line 100
    return-void
.end method

.method public constructor <init>(ILcom/wandoujia/mvc/Action;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const v1, 0x7f010042

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lfaq;-><init>(ILjava/lang/CharSequence;Lcom/wandoujia/mvc/Action;ZI)V

    .line 69
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Lcom/wandoujia/mvc/Action;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfaq;->d:Ljava/util/List;

    .line 32
    iput p1, p0, Lfaq;->a:I

    .line 33
    iput-object p2, p0, Lfaq;->b:Ljava/lang/CharSequence;

    .line 34
    iput-object p3, p0, Lfaq;->c:Lcom/wandoujia/mvc/Action;

    .line 35
    iput-boolean p4, p0, Lfaq;->e:Z

    .line 36
    iput p5, p0, Lfaq;->f:I

    .line 37
    if-eqz p3, :cond_0

    .line 38
    iget-object v0, p0, Lfaq;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/wandoujia/mvc/Action;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 53
    const v1, 0x7f010042

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lfaq;-><init>(ILjava/lang/CharSequence;Lcom/wandoujia/mvc/Action;ZI)V

    .line 54
    return-void
.end method
