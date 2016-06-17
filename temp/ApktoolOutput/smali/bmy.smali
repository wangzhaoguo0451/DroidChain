.class final Lbmy;
.super Ljava/lang/Object;


# instance fields
.field a:Lbmo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbmo",
            "<",
            "Lbjs;",
            ">;"
        }
    .end annotation
.end field

.field b:Lbjs;


# direct methods
.method public constructor <init>(Lbmo;Lbjs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmo",
            "<",
            "Lbjs;",
            ">;",
            "Lbjs;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbmy;->a:Lbmo;

    iput-object p2, p0, Lbmy;->b:Lbjs;

    return-void
.end method
