.class public final Lc;
.super Lau;
.source "ActivityCompat.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lau;-><init>([Ljava/lang/String;B)V

    return-void
.end method

.method public static a(Lbt;)Ld;
    .locals 1
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    if-eqz p0, :cond_0

    .line 212
    new-instance v0, Ld;

    invoke-direct {v0, p0}, Ld;-><init>(Lbt;)V

    .line 214
    :cond_0
    return-object v0
.end method
