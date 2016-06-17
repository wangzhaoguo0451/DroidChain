.class final Lcwf;
.super Lcwh;
.source "TreeTypeAdapter.java"


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
.field private final a:Lcwe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwe",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcvy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcvy",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcvo;

.field private final d:Lczv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lczv",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcwi;

.field private f:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcwe;Lcvy;Lcvo;Lczv;Lcwi;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcwe",
            "<TT;>;",
            "Lcvy",
            "<TT;>;",
            "Lcvo;",
            "Lczv",
            "<TT;>;",
            "Lcwi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcwh;-><init>()V

    .line 43
    iput-object p1, p0, Lcwf;->a:Lcwe;

    .line 44
    iput-object p2, p0, Lcwf;->b:Lcvy;

    .line 45
    iput-object p3, p0, Lcwf;->c:Lcvo;

    .line 46
    iput-object p4, p0, Lcwf;->d:Lczv;

    .line 47
    iput-object p5, p0, Lcwf;->e:Lcwi;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcwe;Lcvy;Lcvo;Lczv;Lcwi;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcwf;-><init>(Lcwe;Lcvy;Lcvo;Lczv;Lcwi;)V

    return-void
.end method

.method private a()Lcwh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcwh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcwf;->f:Lcwh;

    .line 76
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcwf;->c:Lcvo;

    iget-object v1, p0, Lcwf;->e:Lcwi;

    iget-object v2, p0, Lcwf;->d:Lczv;

    invoke-virtual {v0, v1, v2}, Lcvo;->a(Lcwi;Lczv;)Lcwh;

    move-result-object v0

    iput-object v0, p0, Lcwf;->f:Lcwh;

    goto :goto_0
.end method

.method public static a(Lczv;Ljava/lang/Object;)Lcwi;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lczv",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcwi;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Lcwg;

    invoke-direct {v0, p1, p0, v1, v1}, Lcwg;-><init>(Ljava/lang/Object;Lczv;ZB)V

    return-object v0
.end method


# virtual methods
.method public final a(Lczw;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lczw;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcwf;->b:Lcvy;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcwf;->a()Lcwh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-static {p1}, Ld;->a(Lczw;)Lcvz;

    move-result-object v0

    .line 55
    instance-of v1, v0, Lcwa;

    if-eqz v1, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcwf;->b:Lcvy;

    iget-object v2, p0, Lcwf;->d:Lczv;

    invoke-virtual {v2}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcvy;->a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lczy;Ljava/lang/Object;)V
    .locals 2
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
    .line 62
    iget-object v0, p0, Lcwf;->a:Lcwe;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcwf;->a()Lcwh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lczy;->e()Lczy;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcwf;->a:Lcwe;

    iget-object v1, p0, Lcwf;->d:Lczv;

    invoke-virtual {v1}, Lczv;->getType()Ljava/lang/reflect/Type;

    invoke-interface {v0, p2}, Lcwe;->a(Ljava/lang/Object;)Lcvz;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Ld;->a(Lcvz;Lczy;)V

    goto :goto_0
.end method
