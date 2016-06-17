.class final enum Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$2;
.super Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;
.source "AppUtils.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;-><init>(Ljava/lang/String;ILhlc;)V

    return-void
.end method


# virtual methods
.method protected final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/wandoujia/ripple_framework/util/AppUtils;->d()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
