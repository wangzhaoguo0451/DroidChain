.class public final Lejp;
.super Ljava/lang/Object;
.source "IncompatibleDialog.java"


# instance fields
.field a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lejp;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lejp;->b:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lejp;->c:Ljava/util/List;

    .line 76
    return-void
.end method
