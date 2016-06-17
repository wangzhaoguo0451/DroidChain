.class public final Laei;
.super Lafs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lafs;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 13
    const-string v0, "mini_ui_password"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
