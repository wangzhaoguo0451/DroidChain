.class public Lcom/wandoujia/jupiter/service/JupiterAlarmService;
.super Lcom/wandoujia/base/services/AlarmService;
.source "JupiterAlarmService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wandoujia/base/services/AlarmService;-><init>()V

    return-void
.end method


# virtual methods
.method protected initCheckerList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/base/services/AlarmService$ScheduleChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {}, Leny;->b()Leny;

    move-result-object v1

    iget-object v1, v1, Leny;->e:Leni;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lezx;

    invoke-direct {v1}, Lezx;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Letw;

    invoke-direct {v1}, Letw;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Leyh;

    invoke-direct {v1}, Leyh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-object v0
.end method
