.class final Laef;
.super Ladj;
.source "SourceFile"


# instance fields
.field private final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laef;->a:Landroid/view/View;

    .line 44
    invoke-direct {p0}, Ladj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Laef;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laef;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method public final onError()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
