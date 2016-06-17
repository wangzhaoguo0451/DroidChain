.class public final Lgcz;
.super Ljava/lang/ThreadLocal;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 124
    iput-object p1, p0, Lgcz;->a:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lgcz;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method
