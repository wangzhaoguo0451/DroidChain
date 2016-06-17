.class public final Lemk;
.super Ljava/lang/Object;
.source "LogConfig.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "http://l.wandoujia.com/muce/data/sink?profile=%1$s&vc=%2$s&vn=%3$s&gzip=true&encrypt=true&key_version=%4$s&log_version=%5$s"

    sput-object v0, Lemk;->a:Ljava/lang/String;

    return-void
.end method
