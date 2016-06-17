.class public final Lfnl;
.super Ljava/lang/Object;
.source "CommunitySortUtils.java"


# static fields
.field private static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lfnm;

    invoke-direct {v0}, Lfnm;-><init>()V

    sput-object v0, Lfnl;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lffw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lfnl;->a:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    :cond_0
    return-void
.end method
