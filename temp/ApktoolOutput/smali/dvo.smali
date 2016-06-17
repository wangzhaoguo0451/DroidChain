.class final Ldvo;
.super Ljava/lang/Object;
.source "TopicRecyclerScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldvn;


# direct methods
.method constructor <init>(Ldvn;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Ldvo;->a:Ldvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 82
    iget-object v1, p0, Ldvo;->a:Ldvn;

    iget-object v1, v1, Ldvn;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 83
    iget-object v1, p0, Ldvo;->a:Ldvn;

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, v1, Ldvn;->b:I

    .line 84
    return-void
.end method
