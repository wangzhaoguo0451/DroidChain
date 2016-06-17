.class final Lafb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Laez;


# direct methods
.method constructor <init>(Laez;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafb;->a:Laez;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lafb;->a:Laez;

    invoke-static {v0}, Laez;->a(Laez;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lafb;->a:Laez;

    invoke-static {v0}, Laez;->b(Laez;)V

    .line 244
    iget-object v0, p0, Lafb;->a:Laez;

    invoke-virtual {v0}, Laez;->d()V

    .line 246
    :cond_0
    return-void
.end method
