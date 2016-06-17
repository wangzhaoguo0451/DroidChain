.class public final Lfsw;
.super Lfsi;
.source "ModelFetcherWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Lfsi",
        "<TM;>;"
    }
.end annotation


# instance fields
.field private a:Lfsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsi",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lfza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfza",
            "<TT;TM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfsi;Lfza;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfsi",
            "<TT;>;",
            "Lfza",
            "<TT;TM;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lfsi;-><init>()V

    .line 18
    iput-object p1, p0, Lfsw;->a:Lfsi;

    .line 19
    iput-object p2, p0, Lfsw;->b:Lfza;

    .line 20
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 61
    :cond_0
    return-object v0

    .line 57
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lfsw;->b:Lfza;

    invoke-interface {v3, v2}, Lfza;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2a

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfsw;->b:Lfza;

    invoke-interface {v1}, Lfza;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfsw;->a:Lfsi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfsw;->a:Lfsi;

    invoke-virtual {v1}, Lfsi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lfsw;->a:Lfsi;

    invoke-virtual {v0, p1, p2}, Lfsi;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lfsw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final b(II)Lfss;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lfss",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lfsw;->a:Lfsi;

    invoke-virtual {v0, p1, p2}, Lfsi;->b(II)Lfss;

    move-result-object v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 49
    :cond_0
    iget-object v0, v1, Lfss;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lfsw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 50
    new-instance v0, Lfss;

    iget-object v3, v1, Lfss;->b:Ljava/lang/Long;

    iget-object v1, v1, Lfss;->c:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v3, v1}, Lfss;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lfsw;->a:Lfsi;

    invoke-virtual {v0}, Lfsi;->b()V

    .line 31
    return-void
.end method

.method protected final d(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lfsw;->a:Lfsi;

    invoke-virtual {v0, p1, p2}, Lfsi;->d(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lfsw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
