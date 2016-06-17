.class public Lcom/facebook/drawee/view/SimpleDraweeView;
.super Lcom/facebook/drawee/view/GenericDraweeView;
.source "SimpleDraweeView.java"


# static fields
.field private static a:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<+",
            "Lamw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lamw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lamv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Lamv;)V

    .line 49
    invoke-direct {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a()V

    .line 65
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/facebook/drawee/view/SimpleDraweeView;->a:Lakd;

    const-string v1, "SimpleDraweeView was not initialized!"

    invoke-static {v0, v1}, Ld;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/facebook/drawee/view/SimpleDraweeView;->a:Lakd;

    invoke-interface {v0}, Lakd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamw;

    iput-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->b:Lamw;

    goto :goto_0
.end method

.method public static a(Lakd;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakd",
            "<+",
            "Lamw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    sput-object p0, Lcom/facebook/drawee/view/SimpleDraweeView;->a:Lakd;

    .line 38
    return-void
.end method


# virtual methods
.method protected getControllerBuilder()Lamw;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->b:Lamw;

    return-object v0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->b:Lamw;

    invoke-interface {v0}, Lamw;->h()Lamw;

    move-result-object v0

    invoke-interface {v0, p1}, Lamw;->a(Landroid/net/Uri;)Lamw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lamt;

    move-result-object v1

    invoke-interface {v0, v1}, Lamw;->b(Lamt;)Lamw;

    move-result-object v0

    invoke-interface {v0}, Lamw;->g()Lamt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lamt;)V

    .line 90
    return-void
.end method
