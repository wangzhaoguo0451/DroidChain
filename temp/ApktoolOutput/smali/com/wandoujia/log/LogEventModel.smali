.class public final Lcom/wandoujia/log/LogEventModel;
.super Ljava/lang/Object;
.source "LogEventModel.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Lcom/wandoujia/log/LogEventModel$Priority;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;JLcom/wandoujia/log/LogEventModel$Priority;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/wandoujia/log/LogEventModel$Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/wandoujia/log/LogEventModel;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/wandoujia/log/LogEventModel;->b:Ljava/util/Map;

    .line 35
    iput-wide p3, p0, Lcom/wandoujia/log/LogEventModel;->c:J

    .line 36
    iput-object p5, p0, Lcom/wandoujia/log/LogEventModel;->d:Lcom/wandoujia/log/LogEventModel$Priority;

    .line 37
    return-void
.end method
