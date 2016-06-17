.class final Lcyl;
.super Lcwh;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcwh",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcvo;

.field private final b:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcvo;Lcwh;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcvo;",
            "Lcwh",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcwh;-><init>()V

    .line 33
    iput-object p1, p0, Lcyl;->a:Lcvo;

    .line 34
    iput-object p2, p0, Lcyl;->b:Lcwh;

    .line 35
    iput-object p3, p0, Lcyl;->c:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lczw;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lczw;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcyl;->b:Lcwh;

    invoke-virtual {v0, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lczy;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lczy;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcyl;->b:Lcwh;

    .line 53
    iget-object v0, p0, Lcyl;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    :cond_1
    iget-object v2, p0, Lcyl;->c:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    .line 55
    iget-object v1, p0, Lcyl;->a:Lcvo;

    invoke-static {v0}, Lczv;->get(Ljava/lang/reflect/Type;)Lczv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcvo;->a(Lczv;)Lcwh;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcyf;

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lcyl;->b:Lcwh;

    instance-of v1, v1, Lcyf;

    if-nez v1, :cond_2

    .line 62
    iget-object v0, p0, Lcyl;->b:Lcwh;

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    .line 69
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
