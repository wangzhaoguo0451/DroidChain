.class final Lcwg;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcwi;


# instance fields
.field private final a:Lczv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lczv",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Lcwe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwe",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcvy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcvy",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lczv;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lczv",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    instance-of v0, p1, Lcwe;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcwe;

    :goto_0
    iput-object v0, p0, Lcwg;->c:Lcwe;

    .line 120
    instance-of v0, p1, Lcvy;

    if-eqz v0, :cond_2

    check-cast p1, Lcvy;

    :goto_1
    iput-object p1, p0, Lcwg;->d:Lcvy;

    .line 123
    iget-object v0, p0, Lcwg;->c:Lcwe;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcwg;->d:Lcvy;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lg;->c(Z)V

    .line 124
    iput-object p2, p0, Lcwg;->a:Lczv;

    .line 125
    iput-boolean p3, p0, Lcwg;->b:Z

    .line 126
    return-void

    :cond_1
    move-object v0, v1

    .line 117
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 120
    goto :goto_1

    .line 123
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lczv;ZB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcwg;-><init>(Ljava/lang/Object;Lczv;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcvo;Lczv;)Lcwh;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcvo;",
            "Lczv",
            "<TT;>;)",
            "Lcwh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 131
    iget-object v1, p0, Lcwg;->a:Lczv;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcwg;->a:Lczv;

    invoke-virtual {v1, p2}, Lczv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcwg;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcwg;->a:Lczv;

    invoke-virtual {v1}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p2}, Lczv;->getRawType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 134
    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Lcwf;

    iget-object v1, p0, Lcwg;->c:Lcwe;

    iget-object v2, p0, Lcwg;->d:Lcvy;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcwf;-><init>(Lcwe;Lcvy;Lcvo;Lczv;Lcwi;B)V

    :cond_1
    return-object v0

    :cond_2
    move v1, v6

    .line 131
    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lczv;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0
.end method
