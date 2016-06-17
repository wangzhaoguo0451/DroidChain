.class public final Lbrj;
.super Ljava/lang/Object;
.source "PDF417DetectorResult.java"


# instance fields
.field public final a:Lboa;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Lbns;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lboa;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lboa;",
            "Ljava/util/List",
            "<[",
            "Lbns;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lbrj;->a:Lboa;

    .line 34
    iput-object p2, p0, Lbrj;->b:Ljava/util/List;

    .line 35
    return-void
.end method
