.class final Lcwq;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcxj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcxj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcxl;

.field private synthetic b:Ljava/lang/Class;

.field private synthetic c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcwq;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcwq;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {}, Lcxl;->a()Lcxl;

    move-result-object v0

    iput-object v0, p0, Lcwq;->a:Lcxl;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcwq;->a:Lcxl;

    iget-object v1, p0, Lcwq;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcxl;->a(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcwq;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
