.class final Lczc;
.super Lcwh;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcwh",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcwh;


# direct methods
.method constructor <init>(Lcwh;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lczc;->a:Lcwh;

    invoke-direct {p0}, Lcwh;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lczw;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lczc;->a:Lcwh;

    invoke-virtual {v0, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lczy;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 524
    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Lczc;->a:Lcwh;

    invoke-virtual {v0, p1, p2}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    return-void
.end method
