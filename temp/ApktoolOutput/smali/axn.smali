.class public final Laxn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laxn",
        "<",
        "Lavx;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Laws;

.field final b:Lavx;


# direct methods
.method public constructor <init>(Laws;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laxn;->a:Laws;

    new-instance v0, Lavx;

    invoke-direct {v0}, Lavx;-><init>()V

    iput-object v0, p0, Laxn;->b:Lavx;

    return-void
.end method
