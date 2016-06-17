.class public final Lemo;
.super Ljava/lang/Object;
.source "LogSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/log/LogSender;


# direct methods
.method public constructor <init>(Lcom/wandoujia/log/LogSender;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lemo;->a:Lcom/wandoujia/log/LogSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lemo;->a:Lcom/wandoujia/log/LogSender;

    iget-object v1, p0, Lemo;->a:Lcom/wandoujia/log/LogSender;

    iget-object v2, p0, Lemo;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;
    invoke-static {v2}, Lcom/wandoujia/log/LogSender;->access$100(Lcom/wandoujia/log/LogSender;)Lcom/wandoujia/log/LogConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcom/wandoujia/log/LogConfiguration;->getProfileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lemo;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;
    invoke-static {v3}, Lcom/wandoujia/log/LogSender;->access$100(Lcom/wandoujia/log/LogSender;)Lcom/wandoujia/log/LogConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcom/wandoujia/log/LogConfiguration;->getKeyVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lemo;->a:Lcom/wandoujia/log/LogSender;

    #getter for: Lcom/wandoujia/log/LogSender;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;
    invoke-static {v4}, Lcom/wandoujia/log/LogSender;->access$100(Lcom/wandoujia/log/LogSender;)Lcom/wandoujia/log/LogConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcom/wandoujia/log/LogConfiguration;->getLogVersion()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/wandoujia/log/LogSender;->buildMuceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/wandoujia/log/LogSender;->access$200(Lcom/wandoujia/log/LogSender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wandoujia/log/LogSender;->muceUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wandoujia/log/LogSender;->access$002(Lcom/wandoujia/log/LogSender;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lemo;->a:Lcom/wandoujia/log/LogSender;

    iget-object v1, p0, Lemo;->a:Lcom/wandoujia/log/LogSender;

    #calls: Lcom/wandoujia/log/LogSender;->buildHeaderLine()Ljava/lang/String;
    invoke-static {v1}, Lcom/wandoujia/log/LogSender;->access$400(Lcom/wandoujia/log/LogSender;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wandoujia/log/LogSender;->headerLine:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wandoujia/log/LogSender;->access$302(Lcom/wandoujia/log/LogSender;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    return-void
.end method
