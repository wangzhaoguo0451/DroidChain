.class public final Lftq;
.super Ljava/lang/Object;
.source "TabFragmentDelegate.java"


# instance fields
.field public a:Lhow;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhow;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lftq;->a:Lhow;

    .line 28
    iput-object p2, p0, Lftq;->b:Ljava/lang/Class;

    .line 29
    iput-object p3, p0, Lftq;->c:Landroid/os/Bundle;

    .line 30
    return-void
.end method
