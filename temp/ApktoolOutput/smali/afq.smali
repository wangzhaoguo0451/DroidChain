.class final Lafq;
.super Ladj;
.source "SourceFile"


# instance fields
.field private final synthetic a:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafq;->a:Landroid/widget/ImageView;

    .line 60
    invoke-direct {p0}, Ladj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lafq;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lafq;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public final onError()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
