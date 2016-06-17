.class final Lcye;
.super Lcyg;
.source "ReflectiveTypeAdapterFactory.java"


# instance fields
.field private d:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<*>;"
        }
    .end annotation
.end field

.field private synthetic e:Lcvo;

.field private synthetic f:Lczv;

.field private synthetic g:Ljava/lang/reflect/Field;

.field private synthetic h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLcvo;Lczv;Ljava/lang/reflect/Field;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p4, p0, Lcye;->e:Lcvo;

    iput-object p5, p0, Lcye;->f:Lczv;

    iput-object p6, p0, Lcye;->g:Ljava/lang/reflect/Field;

    iput-boolean p7, p0, Lcye;->h:Z

    invoke-direct {p0, p1, p2, p3}, Lcyg;-><init>(Ljava/lang/String;ZZ)V

    .line 82
    iget-object v0, p0, Lcye;->e:Lcvo;

    iget-object v1, p0, Lcye;->f:Lczv;

    invoke-virtual {v0, v1}, Lcvo;->a(Lczv;)Lcwh;

    move-result-object v0

    iput-object v0, p0, Lcye;->d:Lcwh;

    return-void
.end method


# virtual methods
.method final a(Lczw;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcye;->d:Lcwh;

    invoke-virtual {v0, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcye;->h:Z

    if-nez v1, :cond_1

    .line 95
    :cond_0
    iget-object v1, p0, Lcye;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    :cond_1
    return-void
.end method

.method final a(Lczy;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcye;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    new-instance v1, Lcyl;

    iget-object v2, p0, Lcye;->e:Lcvo;

    iget-object v3, p0, Lcye;->d:Lcwh;

    iget-object v4, p0, Lcye;->f:Lczv;

    invoke-virtual {v4}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcyl;-><init>(Lcvo;Lcwh;Ljava/lang/reflect/Type;)V

    .line 89
    invoke-virtual {v1, p1, v0}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
