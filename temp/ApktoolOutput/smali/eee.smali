.class public abstract Leee;
.super Leeg;
.source "BaseLauncherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wandoujia/mvc/BaseModel;",
        ">",
        "Leeg",
        "<TM;>;"
    }
.end annotation


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/wandoujia/launcher_base/R$id;->view_holder:I

    sput v0, Leee;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Leeg;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    if-eqz p2, :cond_1

    sget v0, Leee;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leef;

    move-object v1, v0

    .line 42
    :goto_0
    if-eqz v1, :cond_2

    .line 43
    iget v0, v1, Leef;->a:I

    if-eq v0, p1, :cond_0

    .line 44
    iput p1, v1, Leef;->a:I

    .line 45
    invoke-virtual {p0, p1}, Leee;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/BaseModel;

    invoke-virtual {v1, v0}, Leef;->a(Lcom/wandoujia/mvc/BaseModel;)V

    .line 53
    :cond_0
    :goto_1
    return-object p2

    .line 41
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Leef;

    invoke-direct {v0}, Leef;-><init>()V

    .line 49
    invoke-virtual {p0, p1, p3, v0}, Leee;->a(ILandroid/view/ViewGroup;Leef;)Landroid/view/View;

    move-result-object p2

    .line 50
    sget v1, Leee;->a:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public abstract a(ILandroid/view/ViewGroup;Leef;)Landroid/view/View;
.end method
